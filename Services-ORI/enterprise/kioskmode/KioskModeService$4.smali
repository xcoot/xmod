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

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string/jumbo v2, "false"

    .line 11
    .line 12
    .line 13
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "systemBarEnabled"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "statusBarHidden"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-direct {p1, v3, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "navigationBarHidden"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 47
    .line 48
    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    const-string/jumbo v3, "true"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v4, "multiWindowEnabled"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 64
    .line 65
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v4, "taskManagerEnabled"

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 75
    .line 76
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v4, "kioskModeAirCommandAllowed"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 86
    .line 87
    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v0, "kioskModeAirViewAllowed"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    .line 97
    .line 98
    const/16 v0, 0x1f

    .line 99
    .line 100
    invoke-direct {p1, v0, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v0, "edgeScreenBlockedFunctions"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    return-void
.end method
