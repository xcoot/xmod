.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final useDefaultTextClassifier:Z

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/view/textclassifier/TextClassificationContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput-boolean p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    .line 19
    .line 20
    return-void
.end method
