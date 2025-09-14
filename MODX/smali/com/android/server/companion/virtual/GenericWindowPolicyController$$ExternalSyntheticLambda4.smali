.class public final synthetic Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;->f$0:Landroid/util/ArraySet;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;->f$1:Landroid/util/ArraySet;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;->f$0:Landroid/util/ArraySet;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;->f$1:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 21
    invoke-interface {v1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method
