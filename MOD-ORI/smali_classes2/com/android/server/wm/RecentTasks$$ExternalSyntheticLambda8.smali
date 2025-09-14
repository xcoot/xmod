.class public final synthetic Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RecentTasks;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentTasks;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/RecentTasks;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wm/RecentTasks$$ExternalSyntheticLambda8;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/android/server/wm/RecentTasks;->mUserToProcs:Lcom/android/server/wm/RecentTasks$UserToProcMap;

    .line 8
    .line 9
    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks$UserToProcMap;->get(I)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/RecentTasks;->removeDedicatedProcessFromPackage(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
