.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$2;
.super Landroid/os/ContainerStateReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    move-object p3, p1

    .line 6
    check-cast p3, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-nez p3, :cond_1

    .line 13
    .line 14
    check-cast p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Ljava/lang/Long;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    long-to-int p3, v0

    .line 41
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ne p2, v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 48
    .line 49
    invoke-static {v2, v0, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method
