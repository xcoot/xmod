.class public final Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;
.super Landroid/os/CountDownTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public count:I

.field public final reserve:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    .line 9
    iput p6, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    .line 11
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 6
    return-void
.end method

.method public final onTick(J)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 p2, 0x1

    .line 3
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 5
    iget v1, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 7
    iget v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    .line 9
    add-int/2addr v2, p2

    .line 10
    iput v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->count:I

    .line 12
    const/4 v3, 0x2

    .line 13
    if-gt v2, v3, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 18
    if-nez v0, :cond_4

    .line 20
    const/16 v0, 0x2020

    .line 22
    filled-new-array {v0}, [I

    .line 25
    move-result-object v0

    .line 26
    new-array p2, p2, [J

    .line 28
    const-wide/16 v2, 0x0

    .line 30
    aput-wide v2, p2, p1

    .line 32
    const/4 v2, 0x0

    .line 33
    const-string v3, "/proc/sys/vm/watermark_scale_factor"

    .line 35
    invoke-static {v3, v0, v2, p2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 38
    aget-wide v2, p2, p1

    .line 40
    long-to-int p2, v2

    .line 41
    if-eqz v1, :cond_3

    .line 43
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 45
    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    .line 47
    const/4 v2, -0x1

    .line 48
    if-ne v0, v2, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    if-le v1, p2, :cond_2

    .line 53
    iget v2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    .line 55
    if-le v0, v2, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    if-ge v1, p2, :cond_4

    .line 60
    iget v1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    .line 62
    if-ge v0, v1, :cond_4

    .line 64
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 66
    iput p2, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v0, "curWatermarkScale : "

    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 78
    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 80
    const-string v1, "DynamicHiddenApp_CustomEFKManager"

    .line 82
    invoke-static {p2, v0, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 85
    iget-object p2, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 87
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$WatermarkScaleTimer;->reserve:I

    .line 89
    iput v0, p2, Lcom/android/server/bgslotmanager/CustomEFKManager;->last_Watermark_EFK:I

    .line 91
    iput-boolean p1, p2, Lcom/android/server/bgslotmanager/CustomEFKManager;->isBlockDecEFK:Z

    .line 93
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 96
    :cond_4
    :goto_1
    return-void
.end method
