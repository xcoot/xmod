.class public final synthetic Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;->f$0:Z

    .line 7
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/autofill/FieldClassificationEventLogger$$ExternalSyntheticLambda7;->f$0:Z

    .line 3
    check-cast p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;

    .line 5
    iput-boolean p0, p1, Lcom/android/server/autofill/FieldClassificationEventLogger$FieldClassificationEventInternal;->mIsSessionGc:Z

    .line 7
    return-void
.end method
