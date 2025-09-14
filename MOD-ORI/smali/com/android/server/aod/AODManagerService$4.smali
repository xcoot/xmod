.class public final Lcom/android/server/aod/AODManagerService$4;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/server/aod/AODManagerService;->AOD_SETTING_CLOCK_TYPE_URI_PARSED:Landroid/net/Uri;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/aod/AODManagerService;->getAODClockType()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    div-int/lit16 p2, p2, 0x2710

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p2, v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    iput-boolean v0, p1, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string/jumbo p2, "onChange: mIsAODAnalogLiveClock : "

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$4;->this$0:Lcom/android/server/aod/AODManagerService;

    .line 36
    .line 37
    iget-boolean p0, p0, Lcom/android/server/aod/AODManagerService;->mIsAODAnalogLiveClock:Z

    .line 38
    .line 39
    const-string p2, "AODManagerService"

    .line 40
    .line 41
    invoke-static {p2, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method
