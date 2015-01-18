package models

import scala.slick.jdbc.{GetResult, StaticQuery => Q}

/**
 * Created by baraka on 15-1-18.
 */
case class Scenic(id : Int,name:String,info:String,ticket:String,location:String,traffic:String,notice:String,cityId:Int,areaId:Int,url:String,urlLarge:String)

object Scenic {
  private val db = MyDatabase.database

  implicit val result = GetResult(r => Scenic(r.<<, r.<<, r.<<, r.<<,r.<<,r.<<,r.<<,r.<<,r.<<,r.<<,r.<<))

  def allScenic(id:Int):Seq[Scenic]={
    val sql= "select * from scenic where area_id=?"

    db.withSession{
      implicit session=>
        val q = Q.query[Int,Scenic](sql)
        q(id).list
    }
  }
}
