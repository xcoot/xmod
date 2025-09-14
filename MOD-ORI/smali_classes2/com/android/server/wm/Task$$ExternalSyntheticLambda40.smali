.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Landroid/content/Intent;

.field public final synthetic f$3:[Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$2:[Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$1:[I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$2:[Landroid/content/Intent;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    .line 8
    .line 9
    move-object v3, p1

    .line 10
    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 11
    .line 12
    if-ne v3, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    aget v4, v1, p1

    .line 18
    .line 19
    aget-object v5, v2, p1

    .line 20
    .line 21
    aget-object v6, p0, p1

    .line 22
    .line 23
    const-string/jumbo v7, "navigate-up"

    .line 24
    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 28
    .line 29
    .line 30
    aput p1, v1, p1

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    aput-object p0, v2, p1

    .line 34
    .line 35
    move p0, p1

    .line 36
    :goto_0
    return p0
.end method
