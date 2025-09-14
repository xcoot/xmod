.class public final synthetic Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Landroid/content/res/Configuration;

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$2:Landroid/content/res/Configuration;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$1:Landroid/content/res/Configuration;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRefresher$$ExternalSyntheticLambda1;->f$2:Landroid/content/res/Configuration;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/ActivityRefresher$Evaluator;

    .line 8
    .line 9
    invoke-interface {p1, v0, v1, p0}, Lcom/android/server/wm/ActivityRefresher$Evaluator;->shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
