.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final actionChain:Ljava/lang/String;

.field public actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

.field public final firstParam:Ljava/lang/String;

.field public final jumpChain:Ljava/lang/String;

.field public final secondParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionChain:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->firstParam:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->jumpChain:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->secondParam:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;->actionType:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    .line 14
    return-void
.end method
