.class public final synthetic Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/view/textclassifier/TextClassificationConstants;


# direct methods
.method public synthetic constructor <init>(Landroid/view/textclassifier/TextClassificationConstants;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationConstants;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$$ExternalSyntheticLambda0;->f$0:Landroid/view/textclassifier/TextClassificationConstants;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
