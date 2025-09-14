.class public final Lcom/android/server/devicepolicy/FactoryResetter$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicepolicy/FactoryResetter;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/FactoryResetter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    .line 3
    iget-object p1, p1, Lcom/android/server/devicepolicy/FactoryResetter;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    const-string p2, "FactoryResetter"

    .line 11
    const-string v0, "Factory reset confirmed by %s, proceeding"

    .line 13
    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/FactoryResetter$1;->this$0:Lcom/android/server/devicepolicy/FactoryResetter;

    .line 18
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryResetInternalUnchecked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const/4 p1, 0x0

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    const-string v0, "IOException calling underlying systems"

    .line 28
    invoke-static {p2, p0, v0, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :goto_0
    return-void
.end method
