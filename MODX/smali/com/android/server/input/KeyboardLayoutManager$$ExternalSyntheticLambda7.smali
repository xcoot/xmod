.class public final synthetic Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardLayoutManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardLayoutManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    .line 6
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/input/KeyboardLayoutManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda7;->f$1:Ljava/util/List;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
