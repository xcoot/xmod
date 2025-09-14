.class public final Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x0

    .line 6
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingManager;

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    .line 9
    .line 10
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mRinging:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingManager;->mEdgeLightingPolicyManager:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    return-void
.end method
