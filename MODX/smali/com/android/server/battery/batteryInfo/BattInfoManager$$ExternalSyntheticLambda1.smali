.class public final synthetic Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 6
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 3
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAuthentificationResults:[Z

    .line 5
    aget-boolean p0, p0, p1

    .line 7
    return p0
.end method
