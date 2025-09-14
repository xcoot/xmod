.class final Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;
.super Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Lambda;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;->$index:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Lambda;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Collection doesn\'t contain element at index "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt___CollectionsKt$elementAt$1;->$index:I

    .line 16
    .line 17
    const/16 v1, 0x2e

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method
