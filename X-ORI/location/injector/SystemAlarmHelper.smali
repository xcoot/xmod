.class public final Lcom/android/server/location/injector/SystemAlarmHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/app/AlarmManager;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/AlarmManager;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Landroid/app/AlarmManager;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-class v0, Landroid/app/AlarmManager;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    move-object v0, p0

    .line 22
    check-cast v0, Landroid/app/AlarmManager;

    .line 23
    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    add-long v2, v1, p1

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    move-object v8, p3

    .line 44
    invoke-virtual/range {v0 .. v10}, Landroid/app/AlarmManager;->set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
