.class public final synthetic Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyRemapper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyRemapper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyRemapper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/input/KeyRemapper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Integer;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/input/NativeInputManagerService;->addKeyRemapping(III)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
