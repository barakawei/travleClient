package models

import scala.slick.jdbc.{GetResult, StaticQuery => Q}

/**
 * Created by baraka on 15-1-17.
 */
case class City(id : Int,name:String,areaId:Int, province:String, orderIndex:Int)

object City {
  private val db = MyDatabase.database

  implicit val result = GetResult(r => City(r.<<, r.<<, r.<<, r.<<, r.<<))

  def allCities():Seq[City]={
    val sql= "select * from city where enable=1 order by order_index"
    db.withSession{
      implicit session=>
        Q.queryNA[City](sql).list
    }
  }
}
