.class public final Lcom/android/server/firewall/SenderPermissionFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/SenderPermissionFilter$1;


# instance fields
.field public final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/firewall/SenderPermissionFilter$1;

    .line 3
    const-string/jumbo v1, "sender-permission"

    .line 6
    invoke-direct {v0, v1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/firewall/SenderPermissionFilter;->FACTORY:Lcom/android/server/firewall/SenderPermissionFilter$1;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 6

    .line 1
    iget-object p1, p1, Lcom/android/server/firewall/IntentFirewall;->mAms:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v2, p0, Lcom/android/server/firewall/SenderPermissionFilter;->mPermission:Ljava/lang/String;

    .line 9
    const/4 v5, 0x1

    .line 10
    move v0, p5

    .line 11
    move v1, p4

    .line 12
    move v4, p7

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(IILjava/lang/String;IIZ)I

    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method
