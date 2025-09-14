.class public final Lcom/android/server/power/AttentionDetector$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/AttentionDetector;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/power/AttentionDetector$1;->this$0:Lcom/android/server/power/AttentionDetector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/AttentionDetector$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
