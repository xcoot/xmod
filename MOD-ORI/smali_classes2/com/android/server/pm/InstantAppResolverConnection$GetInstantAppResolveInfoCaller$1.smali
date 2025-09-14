.class public final Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;->this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 3

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
    move-result-object v0

    .line 9
    const-string v1, "android.app.extra.SEQUENCE"

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller$1;->this$0:Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;

    .line 17
    .line 18
    invoke-static {p0, v0, p1}, Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;->access$000(Lcom/android/server/pm/InstantAppResolverConnection$GetInstantAppResolveInfoCaller;Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
