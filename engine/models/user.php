<?php
    class user extends dbh{
        public function getOwner($status){
            if($status=='pending'){
                $sql="SELECT * FROM owner
                WHERE account_status='pending' 
                ";

                $result=$this->connect()->query($sql);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()) {
                        $data[]=$row;
                    }
                    return $data;
                }
            }else{
                $sql="SELECT * FROM owner
                WHERE account_status='approve' 
                ";

                $result=$this->connect()->query($sql);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()) {
                        $data[]=$row;
                    }
                    return $data;
                }
            }
            
        } 
        public function getCustomer($status){
            if($status=='pending'){
                $sql="SELECT * FROM customer
                WHERE account_status='pending'
                ";

                $result=$this->connect()->query($sql);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()) {
                        $data[]=$row;
                    }
                    return $data;
                }
            }else{
                $sql="SELECT * FROM customer
                WHERE account_status='approve'
                ";

                $result=$this->connect()->query($sql);
                if($result->num_rows > 0){
                    while($row = $result->fetch_assoc()) {
                        $data[]=$row;
                    }
                    return $data;
                }
            }
            
        }
        public function updateOwnerStatus($id){
            $sql="UPDATE owner 
            SET account_status='approve'
            WHERE o_id=$id
            ";
            $result=$this->connect()->query($sql);
            return $result;
        }
        public function updateCustStatus($id){
            $sql="UPDATE customer 
            SET account_status='approve'
            WHERE c_id=$id
            ";
            $result=$this->connect()->query($sql);
            return $result;
        }
        public function rejectOwner($id){
            echo $id;
            $sql="DELETE FROM owner 
            WHERE o_id=$id
            ";
            $result=$this->connect()->query($sql);
            return $result;
        }
        public function rejectCust($id){
            $sql="DELETE FROM customer 
            WHERE c_id=$id
            ";
            $result=$this->connect()->query($sql);
            return $result;
        }
    }
?>