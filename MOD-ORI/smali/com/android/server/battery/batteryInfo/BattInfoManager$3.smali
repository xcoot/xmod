.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

.field public final synthetic val$currentbatteryUsage:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->val$currentbatteryUsage:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFullStatusUsageData:Lcom/android/server/battery/batteryInfo/FullStatusUsageData;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->val$currentbatteryUsage:J

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->addAndSave(J)V

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processCycle()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mDischargeLevelData:Lcom/android/server/battery/batteryInfo/DischargeLevelData;

    .line 28
    .line 29
    iget-wide v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->val$currentbatteryUsage:J

    .line 30
    .line 31
    iget v3, v0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    if-eq v3, v4, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x4

    .line 37
    if-ne v3, v4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/battery/batteryInfo/BaseCycleData;->addAndSave(J)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/battery/batteryInfo/DischargeLevelData;->updateEfsFromSBP(J)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$3;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processCycle()V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
