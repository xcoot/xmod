.class public final Lcom/android/server/lights/LightsService$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method public constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    .line 6
    move-result v1

    .line 7
    iput v1, v0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    .line 12
    move-result p1

    .line 13
    const-string v0, "LightsService"

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne p1, v1, :cond_0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN covertype: "

    .line 22
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 27
    iget v2, v2, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 29
    invoke-static {p1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 34
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    const-string v1, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE covertype: "

    .line 41
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 46
    iget v1, v1, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 48
    invoke-static {p1, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 53
    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p1, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 56
    iget p1, p1, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 58
    const/16 v0, 0x8

    .line 60
    if-eq p1, v0, :cond_2

    .line 62
    const-class p1, Lcom/android/server/lights/LightsManager;

    .line 64
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/android/server/lights/LightsManager;

    .line 70
    if-eqz p1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 74
    const/4 v1, 0x3

    .line 75
    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 78
    move-result-object v1

    .line 79
    iput-object v1, v0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 81
    iget-object v0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 83
    const/4 v1, 0x4

    .line 84
    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LightsService$LightImpl;

    .line 87
    move-result-object p1

    .line 88
    iput-object p1, v0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    .line 90
    iget-object p1, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 92
    iget-object p1, p1, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 94
    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/android/server/lights/LightsService$3;->this$0:Lcom/android/server/lights/LightsService;

    .line 101
    iget-object p0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    .line 103
    if-eqz p0, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    .line 108
    :cond_2
    :goto_0
    return-void
.end method
