.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 2
    .line 3
    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mDockState:I

    .line 11
    .line 12
    return-void
.end method
