.class public final Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;

    .line 2
    .line 3
    const-string v0, "KG.AlarmReceiver"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string p0, "alarm_type"

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    sget-object p2, Lcom/samsung/android/knoxguard/service/receiver/AlarmReceiver;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string/jumbo v0, "onReceive : "

    .line 11
    .line 12
    .line 13
    const-string v1, " @"

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne v0, p0, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setRetryLock(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_1

    .line 41
    .line 42
    const-string p0, "System ui is not ready - power off "

    .line 43
    .line 44
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x4

    .line 48
    invoke-static {p1, p0}, Lcom/samsung/android/knoxguard/service/utils/Utils;->powerOff(Landroid/content/Context;I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string/jumbo p1, "onReceive - unidentified alarm action: "

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method
