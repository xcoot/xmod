.class public final Lcom/android/server/bgslotmanager/CustomEFKManager$1;
.super Landroid/os/CountDownTimer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    const-wide/32 v0, 0x2bf20

    const-wide/16 v2, 0x3a98

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJI)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private final onTick$com$android$server$bgslotmanager$CustomEFKManager$2(J)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onTick$com$android$server$bgslotmanager$CustomEFKManager$3(J)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 13
    .line 14
    iget v0, v0, Lcom/android/server/bgslotmanager/CustomEFKManager;->v_watermark_scale:I

    .line 15
    .line 16
    const/16 v1, 0xa

    .line 17
    .line 18
    if-le v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/android/server/bgslotmanager/BgAppPropManager;->TOTAL_MEMORY_2ND:I

    .line 25
    .line 26
    const-string/jumbo v1, "sys.sysctl.watermark_scale_factor"

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager;->isStillDecEFK:Z

    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_1
    const-string v0, "DynamicHiddenApp_CustomEFKManager"

    .line 39
    .line 40
    const-string/jumbo v1, "setEFKBoostRestoreTimer onfinish"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onTick(J)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/32 v0, 0x2bf20

    .line 12
    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    const-string p2, "DynamicHiddenApp_CustomEFKManager"

    .line 17
    .line 18
    if-ltz p1, :cond_0

    .line 19
    .line 20
    const-string/jumbo p1, "setEFKBoostRestoreTimer onTick after 3minutes"

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string/jumbo p0, "setEFKBoostRestoreTimer onTick"

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
