.class public abstract Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.super Lcom/android/server/vcn/VcnGatewayConnection$BaseState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isValidToken(I)Z
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 8
    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method
