.class public final Lcom/android/server/PinnerService$PinnedFileStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final sizeKb:I

.field public final uid:I


# direct methods
.method public constructor <init>(ILcom/android/server/PinnerService$PinnedFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->uid:I

    .line 5
    .line 6
    iget-object p1, p2, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x2f

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    .line 21
    .line 22
    iget p1, p2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 23
    .line 24
    div-int/lit16 p1, p1, 0x400

    .line 25
    .line 26
    iput p1, p0, Lcom/android/server/PinnerService$PinnedFileStats;->sizeKb:I

    .line 27
    .line 28
    return-void
.end method
