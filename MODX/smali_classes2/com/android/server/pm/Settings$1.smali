.class public final Lcom/android/server/pm/Settings$1;
.super Lcom/android/server/utils/Watcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/Settings$1;->this$0:Lcom/android/server/pm/Settings;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
