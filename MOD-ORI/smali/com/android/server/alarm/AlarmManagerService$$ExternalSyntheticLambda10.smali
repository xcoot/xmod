.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService;

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/util/ArraySet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$1:Landroid/util/ArraySet;

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 11
    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v1, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    :goto_0
    return p0
.end method
