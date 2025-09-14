.class public final synthetic Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;->f$0:[I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    .line 2
    .line 3
    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;->f$0:[I

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    aput p1, p0, p2

    .line 9
    .line 10
    return-void
.end method
