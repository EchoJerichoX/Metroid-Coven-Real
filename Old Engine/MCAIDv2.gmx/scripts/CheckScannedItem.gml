if (global.highest!=id) exit;
global.highest=0;
with (instance_create(0,0,messageGen)) 
{
    switch (other.object_index)
    {
      case AIDemoScan1: text = global.scan1; break;
      case AIDemoScan2: text = global.scan2; break;
      case AIDemoScan3: text = global.scan3; break;
      case AIDemoScan4: text = global.scan4; break;
      case AIDemoScan5: text = global.scan5; break;
      case AIDemoScan6: text = global.scan6; break;
      case AIDemoScan7: text = global.scan7; break;
      case AIDemoScan8: text = global.scan8; break;
    }
}
