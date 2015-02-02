package models

import scala.slick.jdbc.{GetResult, StaticQuery => Q}

/**
 * Created by baraka on 15-1-18.
 */
case class Scenic(id : Int,name:String,info:String,ticket:String,location:String,traffic:String,notice:String,cityId:Int,areaId:Int,url:String,urlLarge:String,enable:Int)

object Scenic {
  private val db = MyDatabase.database

  implicit val result = GetResult(r => Scenic(r.<<, r.<<, r.<<, r.<<,r.<<,r.<<,r.<<,r.<<,r.<<,r.<<,r.<<,r.<<))

  def allScenic(id:Int):Seq[Scenic]= {
    var sql = "select * from scenic where city_id=? and enable = 1"
    if (id == 5) { //热门
      sql= "select * from scenic where heritage=1 and sight=1 and culture=1 and enable = 1"
      db.withSession{
        implicit session=>
          Q.queryNA[Scenic](sql).list
      }
    } else {
      db.withSession {
        implicit session =>
          val q = Q.query[Int, Scenic](sql)
          q(id).list
      }
    }
  }

  def scenicByType(id:Int):Seq[Scenic]={
    var sql= "select * from scenic where sight=1 and enable = 1"

    if (id == 0){
      sql= "select * from scenic where sight=1 and enable = 1"
    }else if(id == 1){
      sql= "select * from scenic where culture=1 and enable = 1"
    }else{
      sql= "select * from scenic where heritage=1 and enable = 1"
    }

    db.withSession{
      implicit session=>
        Q.queryNA[Scenic](sql).list
    }
  }
}
