.class public final synthetic Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 6
    iput p2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-boolean p3, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 3
    iget v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback$$ExternalSyntheticLambda2;->f$2:Z

    .line 7
    iget-object v0, v0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;->mCallback:Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;

    .line 9
    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->handleTransactionResult(IZ)V

    .line 12
    return-void
.end method
