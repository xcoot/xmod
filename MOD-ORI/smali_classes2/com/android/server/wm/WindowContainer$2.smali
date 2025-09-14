.class public final Lcom/android/server/wm/WindowContainer$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/WindowContainerListener;


# instance fields
.field public final synthetic val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

.field public final synthetic val$receiver:Lcom/android/server/wm/WindowContainer;

.field public final synthetic val$supplier:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onRemoved()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$receiver:Lcom/android/server/wm/WindowContainer;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->unregisterWindowContainerListener(Lcom/android/server/wm/WindowContainerListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$2;->val$supplier:Lcom/android/server/wm/WindowContainer;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$2;->val$listener:Lcom/android/server/wm/ConfigurationContainerListener;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
