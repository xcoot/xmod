.class public final Lcom/android/server/pm/SpegService$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SpegService;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SpegService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/SpegService$1;->this$0:Lcom/android/server/pm/SpegService;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    .line 2
    .line 3
    const-string v0, "device_provisioned"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/pm/SpegService$1;->val$resolver:Landroid/content/ContentResolver;

    .line 14
    .line 15
    const-string/jumbo v2, "user_setup_complete"

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    :cond_0
    move v1, v0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/SpegService$1;->this$0:Lcom/android/server/pm/SpegService;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/android/server/pm/SpegService;->mSetupWizardFinished:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "SetupWizardFinished: "

    .line 32
    .line 33
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
