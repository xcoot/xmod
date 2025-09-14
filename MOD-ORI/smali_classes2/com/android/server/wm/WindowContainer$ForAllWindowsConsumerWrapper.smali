.class public final Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    return p0
.end method
