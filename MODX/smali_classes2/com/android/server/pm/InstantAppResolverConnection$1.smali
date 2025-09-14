.class public final Lcom/android/server/pm/InstantAppResolverConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/pm/InstantAppResolver$1;

.field public final synthetic val$callbackHandler:Landroid/os/Handler;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolver$1;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolver$1;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "android.app.extra.RESOLVE_INFO"

    .line 2
    .line 3
    const-class v1, Landroid/content/pm/InstantAppResolveInfo;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolver$1;

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    .line 14
    .line 15
    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolver$1;Ljava/util/ArrayList;J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
