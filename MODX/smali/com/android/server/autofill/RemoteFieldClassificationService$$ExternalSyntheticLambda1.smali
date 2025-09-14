.class public final synthetic Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic f$1:Landroid/service/assist/classification/FieldClassificationRequest;

.field public final synthetic f$2:Ljava/lang/ref/WeakReference;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    .line 10
    iput-wide p4, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    .line 12
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 3
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    .line 7
    iget-wide v3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    .line 9
    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    .line 11
    sget p0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;

    .line 18
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteFieldClassificationService$1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V

    .line 21
    invoke-interface {p1, v1, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    .line 24
    return-void
.end method
