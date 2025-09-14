.class public final enum Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

.field public static final enum ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

.field public static final enum INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

.field public static final enum LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 3
    const-string v1, "INSECURE_PORTS"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->INSECURE_PORTS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 11
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 13
    const-string v2, "ABNORMAL_PACKETS"

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->ABNORMAL_PACKETS:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 21
    new-instance v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 23
    const-string v3, "LOCAL_NW"

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v2, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->LOCAL_NW:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 31
    new-instance v3, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 33
    const-string v4, "NONE"

    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->$VALUES:[Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->$VALUES:[Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventFirewall$EventType;

    .line 9
    return-object v0
.end method
