Class appmsw.banks.production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="appmsw.banks.production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="appmsw.banks.service" Category="" ClassName="appmsw.banks.service" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="URL">http://www.cbr.ru/VFS/mcirabis/BIKNew/</Setting>
    <Setting Target="Host" Name="NoDeleteTemp">0</Setting>
    <Setting Target="Host" Name="TempDir">d:\!\</Setting>
    <Setting Target="Host" Name="LoadOverRange">2022-09-04:1:2022-09-05</Setting>
  </Item>
</Production>
}

}
