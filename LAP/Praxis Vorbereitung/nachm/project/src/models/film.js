import { compareSync } from "bcrypt";
import { db } from "./db";

export default class Film {
  constructor(id, title, release, actor, studio) {
    this.id = id;
    this.title = title;
    this.release = release;
    this.actor = actor;
    this.studio = studio;
  }

  /**
   * Gets all Films by a Studio
   * @returns {Promise<any[]>} The films or an error.
   */
  static async getByStudio(studio) {
    const [rows] = await db.query(
      `select f.id as "Id", concat(s.firstname, ' ', s.lastname) as "Schauspieler", f.titel as 'Titel', f.release as 'Erscheinungsdatum', st.name as 'Produktionsfirma'
      from film_schauspieler fs, film f, schauspieler s, country c, studio st
     where fs.film_id = f.id
       and fs.schauspieler_id = s.id
       and s.country_id = c.id
       and st.id = f.studio_id
       and st.name like ?
       order by 1 asc`,
      ["%" + studio + "%"]
    );
    if (rows.length == 0) return null;
    return rows.map((film) => new Film(film.Id, film.Titel, film.Erscheinungsdatum, film.Schauspieler, film.Produktionsfirma));
  }

  /**
   * Gets all Films an actor is part of
   * @returns {Promise<any[]>} The films or an error.
   */
  static async getByActor(actor) {
    const [rows] = await db.query(
      `select f.id as "Id", concat(s.firstname, ' ', s.lastname) as "Schauspieler", f.titel as 'Titel', f.release as 'Erscheinungsdatum', st.name as 'Produktionsfirma'
      from film_schauspieler fs, film f, schauspieler s, country c, studio st
     where fs.film_id = f.id
       and fs.schauspieler_id = s.id
       and s.country_id = c.id
       and st.id = f.studio_id
       and concat(s.firstname, ' ', s.lastname) like ?
       order by 1 asc`,
    ["%" + actor + "%"]
    );
    if (rows.length == 0) return null;
    return rows.map((film) => new Film(film.Id, film.Titel, film.Erscheinungsdatum, film.Schauspieler, film.Produktionsfirma));
  }
}
