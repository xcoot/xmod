.class public final Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager$3;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingPolicyManager;->mVrMode:Z

    .line 4
    .line 5
    return-void
.end method
