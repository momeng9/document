
 select count (distinct ����ǩ)from ��ǩ�� where ����ǩ='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001'
select count(����ǩ)from(select ����ǩ from ��ǩ�� where ����ǩ='07-ANTWC0-D270AG*3600*L1041601*20200225*11.85*11.2*45x32.5x42***BL104160120207000001' group by ����ǩ )alias
select count (*) from (select ����ǩ from ��ǩ�� group by ����ǩ)alias
select count(*)from ��ǩ��
select max(��ˮ��) from ���ر�ǩ where ��='2020' and �ܱ�='21'
select ��ˮ�� from ���ر�ǩ where ʱ��=max(ʱ��)