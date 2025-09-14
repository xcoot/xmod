.class public final synthetic Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/speech/IRecognitionListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/speech/IRecognitionListener;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$0:Landroid/speech/IRecognitionListener;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$0:Landroid/speech/IRecognitionListener;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Landroid/speech/IRecognitionService;

    .line 6
    .line 7
    sget v1, Lcom/android/server/speech/RemoteSpeechRecognitionService;->$r8$clinit:I

    .line 8
    .line 9
    invoke-interface {p1, v0, p0}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
