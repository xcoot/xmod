.class public final Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;
.super Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RestrictionPolicyInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final isScreenCaptureEnabledEx(IZ)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$LocalService;->this$0:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
