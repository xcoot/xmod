.class public final Lcom/android/server/telecom/InternalServiceRepository$1;
.super Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/InternalServiceRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository$1;->this$0:Lcom/android/server/telecom/InternalServiceRepository;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final exemptAppTemporarilyForEvent(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository$1;->this$0:Lcom/android/server/telecom/InternalServiceRepository;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v6, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v2, p1

    .line 12
    move-wide v3, p2

    .line 13
    move v5, p4

    .line 14
    move-object v8, p5

    .line 15
    invoke-interface/range {v0 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
