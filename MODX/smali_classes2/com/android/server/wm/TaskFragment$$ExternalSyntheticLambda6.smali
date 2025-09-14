.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/wm/TaskFragment;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(ILcom/android/server/wm/ActivityRecord;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method
