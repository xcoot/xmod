.class public final Lcom/android/server/input/UEventManager$UEventListener$1;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/UEventManager$UEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/input/UEventManager$UEventListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/input/UEventManager$UEventListener;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    .line 6
    return-void
.end method
