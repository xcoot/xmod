.class public final Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;
.super Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# instance fields
.field public mLastActivatedTime:Ljava/time/LocalDateTime;

.field public final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field public final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 6
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    .line 14
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 16
    return-void
.end method


# virtual methods
.method public final onActivated(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 3
    iget-object v1, v0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 7
    check-cast v2, Lcom/android/server/twilight/TwilightService$1;

    .line 9
    invoke-virtual {v2, p0, v1}, Lcom/android/server/twilight/TwilightService$1;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 12
    invoke-static {v0}, Lcom/android/server/display/color/ColorDisplayService;->-$$Nest$mgetNightDisplayLastActivatedTimeSetting(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 18
    invoke-virtual {v2}, Lcom/android/server/twilight/TwilightService$1;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 25
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 3
    check-cast v0, Lcom/android/server/twilight/TwilightService$1;

    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/twilight/TwilightService$1;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 11
    return-void
.end method

.method public final onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onTwilightStateChanged: isNight="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    if-nez p1, :cond_0

    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "ColorDisplayService"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 36
    return-void
.end method

.method public final updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 10
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    .line 25
    move-result-object v3

    .line 26
    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    .line 28
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    .line 43
    move-result-object v4

    .line 44
    iget-wide v5, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    .line 46
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1, v4}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 53
    move-result-object p1

    .line 54
    iget-object v4, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 56
    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 64
    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 67
    move-result v1

    .line 68
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    .line 70
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    .line 73
    move-result p0

    .line 74
    xor-int/2addr p0, v1

    .line 75
    if-eqz p0, :cond_1

    .line 77
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    .line 82
    move-result v0

    .line 83
    :cond_1
    iget-object p0, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 85
    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    .line 88
    move-result p0

    .line 89
    iget-object p1, v2, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 91
    if-nez p0, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->isActivated()Z

    .line 96
    move-result p0

    .line 97
    if-eq p0, v0, :cond_3

    .line 99
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    .line 113
    :cond_3
    return-void
.end method
