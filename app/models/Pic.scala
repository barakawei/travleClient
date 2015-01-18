package models

import scala.slick.jdbc.{GetResult, StaticQuery => Q}

/**
 * Created by baraka on 15-1-18.
 */
case class Pic(id : Int,url:String)

object Pic {
  private val db = MyDatabase.database

  implicit val result = GetResult(r => Pic(r.<<, r.<<))

  def allPics(id:Int):Seq[Pic]={
    val sql= "select id,url from pic where target_id=? and target='scenic' and type='album'"

    db.withSession{
      implicit session=>
        val q = Q.query[Int,Pic](sql)
        q(id).list
    }
  }
}
