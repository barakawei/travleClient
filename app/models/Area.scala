package models

import scala.slick.jdbc.{GetResult, StaticQuery => Q}
/**
 * Created by baraka on 15-1-17.
 */
case class Area(id : Int,name:String,orderIndex:Int)

object Area {
  private val db = MyDatabase.database

  implicit val result = GetResult(r => Area(r.<<, r.<<, r.<<))

  def allAreas():Seq[Area]={
    val sql= "select * from area"
    db.withSession{
      implicit session=>
        Q.queryNA[Area](sql).list
    }
  }
}
