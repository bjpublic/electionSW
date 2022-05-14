if exists (select * from dbo.sysobjects where id = object_id(N'[elec].[UpOpenrate]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [elec].[UpOpenrate]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TPrec]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TPrec]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TCand]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TCand]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TCandLocal]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TCandLocal]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TCandSBS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TCandSBS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TCode]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TCode]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TPrecLocal]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TPrecLocal]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TPrecSBS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TPrecSBS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Ele_TQsheet]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[Ele_TQsheet]
GO

CREATE TABLE [dbo].[Ele_TPrec] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecOrd] [numeric](18, 0) NOT NULL ,
	[PrecName] [varchar] (50) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[City] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PopCnt] [numeric](18, 0) NOT NULL ,
	[HomeCnt] [numeric](18, 0) NOT NULL ,
	[AdultCnt] [numeric](18, 0) NOT NULL ,
	[PollDist] [numeric](18, 0) NOT NULL ,
	[PollRate1] [char] (5) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PollRate2] [char] (5) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PollRate3] [char] (5) COLLATE Korean_Wansung_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TCand] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[OrdNo] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[KorName] [varchar] (14) COLLATE Korean_Wansung_CI_AS NULL ,
	[ChaName] [varchar] (14) COLLATE Korean_Wansung_CI_AS NULL ,
	[PartyCode] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[SocialNo] [char] (14) COLLATE Korean_Wansung_CI_AS NULL ,
	[Addr1] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Addr2] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Tel] [varchar] (15) COLLATE Korean_Wansung_CI_AS NULL ,
	[SchCode] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[GradYMD] [char] (8) COLLATE Korean_Wansung_CI_AS NULL ,
	[JobCode] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[Career1] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[Career2] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[Career3] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[Career4] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[RegGbn] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[ElecCnt] [numeric](18, 0) NULL ,
	[CandCnt] [numeric](18, 0) NULL ,
	[RegYMD] [char] (8) COLLATE Korean_Wansung_CI_AS NULL ,
	[ChgYMD] [char] (8) COLLATE Korean_Wansung_CI_AS NULL ,
	[ChgResn] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TCandLocal] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[OrdNo] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[VotesCnt] [numeric](18, 0) NOT NULL ,
	[VotesRate] [varchar] (5) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Rank] [int] NOT NULL ,
	[BroYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TCandSBS] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[OrdNo] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[VotesCnt] [numeric](18, 0) NOT NULL ,
	[VotesRate] [varchar] (5) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Rank] [int] NOT NULL ,
	[BroYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TCode] (
	[Catgr] [char] (3) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Code] [char] (3) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[ADesc] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[BDesc] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Resv1] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Resv2] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Resv3] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Resv4] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Resv5] [varchar] (50) COLLATE Korean_Wansung_CI_AS NULL ,
	[Ord] [varchar] (10) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TPrecLocal] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Protect] [char] (1) COLLATE Korean_Wansung_CI_AS NULL ,
	[ElecCnt] [numeric](18, 0) NULL ,
	[PollCnt] [numeric](18, 0) NULL ,
	[PollRate] [char] (5) COLLATE Korean_Wansung_CI_AS NULL ,
	[PollYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL ,
	[OpenCnt] [numeric](18, 0) NULL ,
	[OpenRate] [char] (5) COLLATE Korean_Wansung_CI_AS NULL ,
	[OpenYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL ,
	[FstNo] [char] (2) COLLATE Korean_Wansung_CI_AS NULL ,
	[ElecGbn] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[CanCnt] [numeric](18, 0) NULL ,
	[ModHMS] [char] (14) COLLATE Korean_Wansung_CI_AS NULL ,
	[BroYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TPrecSBS] (
	[ElecCatgr] [char] (2) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[PrecID] [char] (8) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Eleccnt] [numeric](18, 0) NULL ,
	[PollCnt] [numeric](18, 0) NULL ,
	[PollRate] [char] (5) COLLATE Korean_Wansung_CI_AS NULL ,
	[PollYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL ,
	[OpenCnt] [numeric](18, 0) NULL ,
	[OpenRate] [char] (5) COLLATE Korean_Wansung_CI_AS NULL ,
	[OpenYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL ,
	[FstNo] [char] (2) COLLATE Korean_Wansung_CI_AS NULL ,
	[ElecGbn] [char] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[CanCnt] [numeric](18, 0) NULL ,
	[ModHMS] [char] (14) COLLATE Korean_Wansung_CI_AS NULL ,
	[BroYN] [char] (1) COLLATE Korean_Wansung_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Ele_TQsheet] (
	[Catgr] [varchar] (50) COLLATE Korean_Wansung_CI_AS NOT NULL ,
	[Seq] [int] NOT NULL ,
	[CutCode] [varchar] (3) COLLATE Korean_Wansung_CI_AS NULL ,
	[CutName] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[ScrCnt] [int] NULL ,
	[Parm] [varchar] (100) COLLATE Korean_Wansung_CI_AS NULL ,
	[Played] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Ele_TPrec] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TPrec] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TCand] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TCand] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID],
		[OrdNo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TCandLocal] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TCandLocal] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID],
		[OrdNo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TCandSBS] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TCandSBS] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID],
		[OrdNo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TCode] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TCode] PRIMARY KEY  CLUSTERED 
	(
		[Catgr],
		[Code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TPrecLocal] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TPrecLocal] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TPrecSBS] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TPrecSBS] PRIMARY KEY  CLUSTERED 
	(
		[ElecCatgr],
		[PrecID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TQsheet] WITH NOCHECK ADD 
	CONSTRAINT [PK_Ele_TQsheet] PRIMARY KEY  CLUSTERED 
	(
		[Catgr],
		[Seq]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Ele_TPrec] WITH NOCHECK ADD 
	CONSTRAINT [DF_Ele_TPrec_PollRate3] DEFAULT (0.0) FOR [PollRate3]
GO

ALTER TABLE [dbo].[Ele_TCandLocal] WITH NOCHECK ADD 
	CONSTRAINT [DF_Ele_TCandLocal_BroYN] DEFAULT ('N') FOR [BroYN]
GO

ALTER TABLE [dbo].[Ele_TPrecLocal] WITH NOCHECK ADD 
	CONSTRAINT [DF_Ele_TPrecLocal_Protect] DEFAULT ('N') FOR [Protect],
	CONSTRAINT [DF_Ele_TPrecLocal_BroYN] DEFAULT ('N') FOR [BroYN]
GO

ALTER TABLE [dbo].[Ele_TPrecSBS] WITH NOCHECK ADD 
	CONSTRAINT [DF_Ele_TPrecSBS_BroYN] DEFAULT ('N') FOR [BroYN]
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

CREATE  procedure UpOpenrate
@rate  real
as

-- 변수 선언
declare @catgr     char(1),
        @precid    char(8),
        @pollcnt   numeric(18,0),
        @openrate  real,
        @opencnt   numeric(18,0),
        @ordno     char(2),
        @votesrate real,
        @cancnt    numeric(18,0),
        @votescnt  numeric(18,0)
      
-- 선거구커서
declare c1 cursor for
select eleccatgr, precid, cast(openrate as real), pollcnt, cancnt
from   ele_tpreclocal
where  protect = 'N'


open c1
fetch next from c1 into @catgr, @precid, @openrate, @pollcnt, @cancnt
while @@FETCH_STATUS = 0
begin
  -- 개표율 0%는 제외
  -- 증가개표율과 개표율 합이 100% 이상일 경우 제외
  if (@openrate > 0.0) and (@openrate + @rate < 100.0)
  begin
    --개표수, 개표율변경
    set @opencnt = cast(@pollcnt as real) * (@rate + @openrate) / 100.0
    update ele_tpreclocal
    set    opencnt   = @opencnt,
           openrate  = str(@rate + @openrate, 5, 1)
    where  eleccatgr = @catgr
    and    precid    = @precid

    -- 유효표 재계산
    set @opencnt = @opencnt - @cancnt

    -- 후보자커서 
    declare c2 cursor for
    select ordno, cast(votesrate as real)
    from   ele_tcandlocal
    where  eleccatgr = @catgr
    and    precid    = @precid

    open c2
    fetch next from c2 into @ordno, @votesrate
    while @@FETCH_STATUS = 0
    begin
      -- 득표수 0인 후보 제외
      if @votesrate > 0.0
      begin
        update ele_tcandlocal
        set    votescnt  = round(cast(@opencnt as real) * @votesrate / 100.0, 0)
        where  eleccatgr = @catgr
        and    precid    = @precid
        and    ordno     = @ordno
      end
      fetch next from c2 into @ordno, @votesrate
    end
    close c2
    deallocate c2
  end
  fetch next from c1 into @catgr, @precid, @openrate, @pollcnt, @cancnt
end
close c1
deallocate c1



GO


SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

