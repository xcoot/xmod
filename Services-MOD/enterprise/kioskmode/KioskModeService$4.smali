.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Ljava/util/HashMap;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string/jumbo v2, "false"

    .line 13
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 16
    const-string/jumbo v0, "systemBarEnabled"

    .line 19
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 28
    const-string/jumbo v3, "statusBarHidden"

    .line 31
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-direct {p1, v3, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 40
    const-string/jumbo v2, "navigationBarHidden"

    .line 43
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 48
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 50
    const/4 v2, -0x1

    .line 51
    const-string/jumbo v3, "true"

    .line 54
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 57
    const-string/jumbo v4, "multiWindowEnabled"

    .line 60
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 65
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 68
    const-string/jumbo v4, "taskManagerEnabled"

    .line 71
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 76
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 79
    const-string/jumbo v4, "kioskModeAirCommandAllowed"

    .line 82
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 87
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 90
    const-string/jumbo v0, "kioskModeAirViewAllowed"

    .line 93
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 98
    const/16 v0, 0x1f

    .line 100
    invoke-direct {p1, v0, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 103
    const-string/jumbo v0, "edgeScreenBlockedFunctions"

    .line 106
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
