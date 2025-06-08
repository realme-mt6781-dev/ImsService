.class Lcom/mediatek/ims/rcs/UaServiceManager$3;
.super Ljava/lang/Object;
.source "UaServiceManager.java"

# interfaces
.implements Lcom/mediatek/ims/rcsua/RcsUaService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/rcs/UaServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/rcs/UaServiceManager;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/rcs/UaServiceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 765
    iput-object p1, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 6
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 768
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 770
    .local v1, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 771
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsEventCallback()Lcom/mediatek/ims/rcsua/ImsEventCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    .line 772
    .local v0, "imsClient":Lcom/mediatek/ims/rcsua/Client;
    const/4 v2, 0x0

    .line 774
    .local v2, "sipChannel":Lcom/mediatek/ims/rcsua/SipChannel;
    :try_start_0
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipEventCallback()Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mediatek/ims/rcsua/Client;->openSipChannel(Lcom/mediatek/ims/rcsua/SipChannel$EventCallback;)Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 777
    goto :goto_1

    .line 775
    :catch_0
    move-exception v3

    .line 776
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    const-string v5, "openSipChannel exception"

    invoke-static {v4, v5}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$800(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 778
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsCallback()Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 779
    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v3}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 780
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getAcsCallback()Lcom/mediatek/ims/rcsua/AcsEventCallback;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 781
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setAcsCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V

    .line 783
    :cond_0
    invoke-virtual {v1, v0}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setImsClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 784
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setSipChannel(Lcom/mediatek/ims/rcsua/SipChannel;)V

    .line 785
    goto :goto_2

    .line 787
    .end local v0    # "imsClient":Lcom/mediatek/ims/rcsua/Client;
    .end local v1    # "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    .end local v2    # "sipChannel":Lcom/mediatek/ims/rcsua/SipChannel;
    :cond_1
    goto :goto_0

    .line 788
    :cond_2
    :goto_2
    return-void
.end method

.method public serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 5
    .param p1, "service"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 792
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$100(Lcom/mediatek/ims/rcs/UaServiceManager;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    iget-object v0, v0, Lcom/mediatek/ims/rcs/UaServiceManager;->mServiceContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;

    .line 794
    .local v1, "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 795
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getSipChannel()Lcom/mediatek/ims/rcsua/SipChannel;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setSipChannel(Lcom/mediatek/ims/rcsua/SipChannel;)V

    .line 798
    :cond_0
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getImsClient()Lcom/mediatek/ims/rcsua/Client;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 799
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setImsClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 801
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getUaService()Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->stopService()V

    .line 802
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUaService(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 803
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v0, "options":Landroid/os/Bundle;
    const/4 v2, 0x1

    const-string v3, "OPTION_ROI_SUPPORT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 805
    iget-object v2, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    .line 806
    invoke-static {v2}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$900(Lcom/mediatek/ims/rcs/UaServiceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/mediatek/ims/rcs/UaServiceManager$3;->this$0:Lcom/mediatek/ims/rcs/UaServiceManager;

    invoke-static {v4}, Lcom/mediatek/ims/rcs/UaServiceManager;->access$1000(Lcom/mediatek/ims/rcs/UaServiceManager;)Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v2

    .line 805
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;->setUaService(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 807
    goto :goto_1

    .line 809
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "serviceContext":Lcom/mediatek/ims/rcs/UaServiceManager$UaServiceContext;
    :cond_2
    goto :goto_0

    .line 811
    :cond_3
    :goto_1
    return-void
.end method
