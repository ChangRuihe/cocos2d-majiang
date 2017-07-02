
--��ʽҪ��2015-4-2 18:01:00
function Util:datetime2Number( datetime )

	local formatedtime = {}

	local datetimeTable = Util:SplitString(datetime, " ")
    assert("table" == type(datetimeTable) and 2 == #datetimeTable)
	local date = datetimeTable[1]
	local time = datetimeTable[2]

	local dateTable = Util:SplitString(date, "-")
	formatedtime.year = tonumber(dateTable[1])
	assert(nil ~= formatedtime.year)
	formatedtime.month = tonumber(dateTable[2])
	assert(nil ~= formatedtime.month)
	formatedtime.day = tonumber(dateTable[3])
	assert(nil ~= formatedtime.day)

	local timeTable = Util:SplitString(time, ":")
	formatedtime.hour = tonumber(timeTable[1])
	assert(nil ~= formatedtime.hour and formatedtime.hour <= 24)
	formatedtime.min  = tonumber(timeTable[2])
	assert(nil ~= formatedtime.min and formatedtime.min < 60)
	formatedtime.sec  = tonumber(timeTable[3])
	assert(nil ~= formatedtime.sec and formatedtime.sec < 60)

	--year <= 3000
	return os.time(formatedtime)
end

--��ñ�׼ʱ���ʽ:2015-5-13 14:20:20
function Util:GetStandardDateTime( mechineTime )
	return os.date("%Y-%m-%d %H:%M:%S", mechineTime)
end
--��ñ�׼ʱ������ڲ���
function Util:GetStandardDate( mechineTime )
	return os.date("%Y-%m-%d", mechineTime)
end
--�����һ�������
function Util:GetNextStandardDate( mechineTime )
	return os.date("%Y-%m-%d", mechineTime + 24 * 3600)
end

--���Сʱ
function Util:GetHourNumber( mechineTime )
	return tonumber(os.date("%H", mechineTime))
end
--�����
function Util:GetDayNumber( mechineTime )
	return tonumber(os.date("%d", mechineTime))
end


--���������������Сʱ��
function Util:TimeDifferenceHours( current, previous )
	local diff = current - previous
	return math.floor(diff / 3600)
end

--��������ʱ�����������
--ʱ��Ϊ��������ʱ��,��λΪ��
function Util:TimeDifferenceMinutes( current, previous )
	local diff = current - previous
	return math.floor(diff / 60)
end

--��������ʱ���������
function Util:TimeDifferenceSeconds( current, previous )
	return current - previous
end

--��ͬ��һ�죬���ڲ�ͬ
function Util:IsDifferentDay(current, previous)
	local current_day = Util:GetDayNumber(current)
	local previous_day = Util:GetDayNumber(previous)

	return (current_day ~= previous_day)
end

--ÿ�������ʱ����ʼ��
function Util:GetNextDailyClearTimerElapse()
	--���㵱ǰʱ�䵽��һ��6:00����ʱ����
	local currenttime = os.time_ext()
	local nextcleartime = nil
	local hour = Util:GetHourNumber(currenttime)
	local nextcleardatestr = nil
	--��ǰʱ��С��6����
	if hour < enGameSystemTimeParams.enNewDayHour then
		nextcleardatestr = Util:GetStandardDate(currenttime)
	--��ǰʱ�䳬��6����
	else
		nextcleardatestr = Util:GetNextStandardDate(currenttime)
	end

	local nextcleartime = Util:datetime2Number(nextcleardatestr .. " " .. enGameSystemTimeParams.enNewDayHour .. ":00:00")

	return Util:TimeDifferenceSeconds(nextcleartime, currenttime)
end

--�жϵ�ǰʱ���Ƿ�Ϊ�µ�һ��
function Util:IsANewDay( currenttime, previoustime )
    currenttime = currenttime - enGameSystemTimeParams.enNewDayHour * 3600 + enGameSystemTimeParams.enGMT * 3600
    previoustime = previoustime - enGameSystemTimeParams.enNewDayHour * 3600 + enGameSystemTimeParams.enGMT * 3600
    curDay = math.floor(currenttime / (24 * 3600))
    preDay = math.floor(previoustime / (24 * 3600))
    return curDay > preDay
end


